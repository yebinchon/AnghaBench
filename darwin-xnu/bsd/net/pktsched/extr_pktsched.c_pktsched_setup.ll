; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/pktsched/extr_pktsched.c_pktsched_setup.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/pktsched/extr_pktsched.c_pktsched_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifclassq = type { i32, i32, i32*, i32*, i32*, i32*, i32* }

@machclk_freq = common dso_local global i64 0, align 8
@IFCQF_ENABLED = common dso_local global i32 0, align 4
@PKTSCHEDT_NONE = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pktsched_setup(%struct.ifclassq* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ifclassq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ifclassq* %0, %struct.ifclassq** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %12 = load %struct.ifclassq*, %struct.ifclassq** %6, align 8
  %13 = call i32 @IFCQ_LOCK_ASSERT_HELD(%struct.ifclassq* %12)
  %14 = load i64, i64* @machclk_freq, align 8
  %15 = icmp ne i64 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i32 @VERIFY(i32 %16)
  %18 = load %struct.ifclassq*, %struct.ifclassq** %6, align 8
  %19 = getelementptr inbounds %struct.ifclassq, %struct.ifclassq* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %107

24:                                               ; preds = %4
  %25 = load %struct.ifclassq*, %struct.ifclassq** %6, align 8
  %26 = getelementptr inbounds %struct.ifclassq, %struct.ifclassq* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @IFCQF_ENABLED, align 4
  %29 = and i32 %27, %28
  store i32 %29, i32* %11, align 4
  %30 = load %struct.ifclassq*, %struct.ifclassq** %6, align 8
  %31 = getelementptr inbounds %struct.ifclassq, %struct.ifclassq* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sext i32 %32 to i64
  %34 = load i64, i64* @PKTSCHEDT_NONE, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %77

36:                                               ; preds = %24
  %37 = load %struct.ifclassq*, %struct.ifclassq** %6, align 8
  %38 = call i32 @pktsched_teardown(%struct.ifclassq* %37)
  %39 = load %struct.ifclassq*, %struct.ifclassq** %6, align 8
  %40 = getelementptr inbounds %struct.ifclassq, %struct.ifclassq* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sext i32 %41 to i64
  %43 = load i64, i64* @PKTSCHEDT_NONE, align 8
  %44 = icmp eq i64 %42, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @VERIFY(i32 %45)
  %47 = load %struct.ifclassq*, %struct.ifclassq** %6, align 8
  %48 = getelementptr inbounds %struct.ifclassq, %struct.ifclassq* %47, i32 0, i32 6
  %49 = load i32*, i32** %48, align 8
  %50 = icmp eq i32* %49, null
  %51 = zext i1 %50 to i32
  %52 = call i32 @VERIFY(i32 %51)
  %53 = load %struct.ifclassq*, %struct.ifclassq** %6, align 8
  %54 = getelementptr inbounds %struct.ifclassq, %struct.ifclassq* %53, i32 0, i32 5
  %55 = load i32*, i32** %54, align 8
  %56 = icmp eq i32* %55, null
  %57 = zext i1 %56 to i32
  %58 = call i32 @VERIFY(i32 %57)
  %59 = load %struct.ifclassq*, %struct.ifclassq** %6, align 8
  %60 = getelementptr inbounds %struct.ifclassq, %struct.ifclassq* %59, i32 0, i32 4
  %61 = load i32*, i32** %60, align 8
  %62 = icmp eq i32* %61, null
  %63 = zext i1 %62 to i32
  %64 = call i32 @VERIFY(i32 %63)
  %65 = load %struct.ifclassq*, %struct.ifclassq** %6, align 8
  %66 = getelementptr inbounds %struct.ifclassq, %struct.ifclassq* %65, i32 0, i32 3
  %67 = load i32*, i32** %66, align 8
  %68 = icmp eq i32* %67, null
  %69 = zext i1 %68 to i32
  %70 = call i32 @VERIFY(i32 %69)
  %71 = load %struct.ifclassq*, %struct.ifclassq** %6, align 8
  %72 = getelementptr inbounds %struct.ifclassq, %struct.ifclassq* %71, i32 0, i32 2
  %73 = load i32*, i32** %72, align 8
  %74 = icmp eq i32* %73, null
  %75 = zext i1 %74 to i32
  %76 = call i32 @VERIFY(i32 %75)
  br label %77

77:                                               ; preds = %36, %24
  %78 = load i32, i32* %7, align 4
  switch i32 %78, label %94 [
    i32 128, label %79
    i32 129, label %84
    i32 130, label %89
  ]

79:                                               ; preds = %77
  %80 = load %struct.ifclassq*, %struct.ifclassq** %6, align 8
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* %9, align 4
  %83 = call i32 @tcq_setup_ifclassq(%struct.ifclassq* %80, i32 %81, i32 %82)
  store i32 %83, i32* %10, align 4
  br label %96

84:                                               ; preds = %77
  %85 = load %struct.ifclassq*, %struct.ifclassq** %6, align 8
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* %9, align 4
  %88 = call i32 @qfq_setup_ifclassq(%struct.ifclassq* %85, i32 %86, i32 %87)
  store i32 %88, i32* %10, align 4
  br label %96

89:                                               ; preds = %77
  %90 = load %struct.ifclassq*, %struct.ifclassq** %6, align 8
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* %9, align 4
  %93 = call i32 @fq_if_setup_ifclassq(%struct.ifclassq* %90, i32 %91, i32 %92)
  store i32 %93, i32* %10, align 4
  br label %96

94:                                               ; preds = %77
  %95 = load i32, i32* @ENXIO, align 4
  store i32 %95, i32* %10, align 4
  br label %96

96:                                               ; preds = %94, %89, %84, %79
  %97 = load i32, i32* %10, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %96
  %100 = load i32, i32* %11, align 4
  %101 = load %struct.ifclassq*, %struct.ifclassq** %6, align 8
  %102 = getelementptr inbounds %struct.ifclassq, %struct.ifclassq* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = or i32 %103, %100
  store i32 %104, i32* %102, align 4
  br label %105

105:                                              ; preds = %99, %96
  %106 = load i32, i32* %10, align 4
  store i32 %106, i32* %5, align 4
  br label %107

107:                                              ; preds = %105, %23
  %108 = load i32, i32* %5, align 4
  ret i32 %108
}

declare dso_local i32 @IFCQ_LOCK_ASSERT_HELD(%struct.ifclassq*) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @pktsched_teardown(%struct.ifclassq*) #1

declare dso_local i32 @tcq_setup_ifclassq(%struct.ifclassq*, i32, i32) #1

declare dso_local i32 @qfq_setup_ifclassq(%struct.ifclassq*, i32, i32) #1

declare dso_local i32 @fq_if_setup_ifclassq(%struct.ifclassq*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
