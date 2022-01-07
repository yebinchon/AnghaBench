; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/classq/extr_classq_subr.c_ifclassq_tbr_dequeue_common.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/classq/extr_classq_subr.c_ifclassq_tbr_dequeue_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifclassq = type { %struct.tb_regulator }
%struct.tb_regulator = type { i64, i8*, i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.ifclassq*, i32, i64, i32*)* @ifclassq_tbr_dequeue_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ifclassq_tbr_dequeue_common(%struct.ifclassq* %0, i32 %1, i64 %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ifclassq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.tb_regulator*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store %struct.ifclassq* %0, %struct.ifclassq** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load %struct.ifclassq*, %struct.ifclassq** %6, align 8
  %15 = call i32 @IFCQ_LOCK_ASSERT_HELD(%struct.ifclassq* %14)
  %16 = load i64, i64* %8, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %4
  %19 = load i32, i32* %7, align 4
  %20 = call i64 @MBUF_VALID_SC(i32 %19)
  %21 = icmp ne i64 %20, 0
  br label %22

22:                                               ; preds = %18, %4
  %23 = phi i1 [ true, %4 ], [ %21, %18 ]
  %24 = zext i1 %23 to i32
  %25 = call i32 @VERIFY(i32 %24)
  %26 = load %struct.ifclassq*, %struct.ifclassq** %6, align 8
  %27 = call i32 @IFCQ_TBR_IS_ENABLED(%struct.ifclassq* %26)
  %28 = call i32 @VERIFY(i32 %27)
  %29 = load %struct.ifclassq*, %struct.ifclassq** %6, align 8
  %30 = getelementptr inbounds %struct.ifclassq, %struct.ifclassq* %29, i32 0, i32 0
  store %struct.tb_regulator* %30, %struct.tb_regulator** %10, align 8
  %31 = load %struct.tb_regulator*, %struct.tb_regulator** %10, align 8
  %32 = getelementptr inbounds %struct.tb_regulator, %struct.tb_regulator* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp sle i64 %33, 0
  br i1 %34, label %35, label %85

35:                                               ; preds = %22
  %36 = call i8* (...) @read_machclk()
  store i8* %36, i8** %13, align 8
  %37 = load i8*, i8** %13, align 8
  %38 = load %struct.tb_regulator*, %struct.tb_regulator** %10, align 8
  %39 = getelementptr inbounds %struct.tb_regulator, %struct.tb_regulator* %38, i32 0, i32 1
  %40 = load i8*, i8** %39, align 8
  %41 = ptrtoint i8* %37 to i64
  %42 = ptrtoint i8* %40 to i64
  %43 = sub i64 %41, %42
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %12, align 4
  %46 = load %struct.tb_regulator*, %struct.tb_regulator** %10, align 8
  %47 = getelementptr inbounds %struct.tb_regulator, %struct.tb_regulator* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = icmp sge i32 %45, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %35
  %51 = load %struct.tb_regulator*, %struct.tb_regulator** %10, align 8
  %52 = getelementptr inbounds %struct.tb_regulator, %struct.tb_regulator* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.tb_regulator*, %struct.tb_regulator** %10, align 8
  %55 = getelementptr inbounds %struct.tb_regulator, %struct.tb_regulator* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  br label %81

56:                                               ; preds = %35
  %57 = load i32, i32* %12, align 4
  %58 = load %struct.tb_regulator*, %struct.tb_regulator** %10, align 8
  %59 = getelementptr inbounds %struct.tb_regulator, %struct.tb_regulator* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 8
  %61 = mul nsw i32 %57, %60
  %62 = sext i32 %61 to i64
  %63 = load %struct.tb_regulator*, %struct.tb_regulator** %10, align 8
  %64 = getelementptr inbounds %struct.tb_regulator, %struct.tb_regulator* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %65, %62
  store i64 %66, i64* %64, align 8
  %67 = load %struct.tb_regulator*, %struct.tb_regulator** %10, align 8
  %68 = getelementptr inbounds %struct.tb_regulator, %struct.tb_regulator* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.tb_regulator*, %struct.tb_regulator** %10, align 8
  %71 = getelementptr inbounds %struct.tb_regulator, %struct.tb_regulator* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = icmp sgt i64 %69, %72
  br i1 %73, label %74, label %80

74:                                               ; preds = %56
  %75 = load %struct.tb_regulator*, %struct.tb_regulator** %10, align 8
  %76 = getelementptr inbounds %struct.tb_regulator, %struct.tb_regulator* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.tb_regulator*, %struct.tb_regulator** %10, align 8
  %79 = getelementptr inbounds %struct.tb_regulator, %struct.tb_regulator* %78, i32 0, i32 0
  store i64 %77, i64* %79, align 8
  br label %80

80:                                               ; preds = %74, %56
  br label %81

81:                                               ; preds = %80, %50
  %82 = load i8*, i8** %13, align 8
  %83 = load %struct.tb_regulator*, %struct.tb_regulator** %10, align 8
  %84 = getelementptr inbounds %struct.tb_regulator, %struct.tb_regulator* %83, i32 0, i32 1
  store i8* %82, i8** %84, align 8
  br label %85

85:                                               ; preds = %81, %22
  %86 = load %struct.tb_regulator*, %struct.tb_regulator** %10, align 8
  %87 = getelementptr inbounds %struct.tb_regulator, %struct.tb_regulator* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp sle i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %85
  store i8* null, i8** %5, align 8
  br label %126

91:                                               ; preds = %85
  %92 = load i64, i64* %8, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %91
  %95 = load %struct.ifclassq*, %struct.ifclassq** %6, align 8
  %96 = load i32, i32* %7, align 4
  %97 = load i8*, i8** %11, align 8
  %98 = load i32*, i32** %9, align 8
  %99 = call i32 @IFCQ_DEQUEUE_SC(%struct.ifclassq* %95, i32 %96, i8* %97, i32* %98)
  br label %105

100:                                              ; preds = %91
  %101 = load %struct.ifclassq*, %struct.ifclassq** %6, align 8
  %102 = load i8*, i8** %11, align 8
  %103 = load i32*, i32** %9, align 8
  %104 = call i32 @IFCQ_DEQUEUE(%struct.ifclassq* %101, i8* %102, i32* %103)
  br label %105

105:                                              ; preds = %100, %94
  %106 = load i8*, i8** %11, align 8
  %107 = icmp ne i8* %106, null
  br i1 %107, label %108, label %124

108:                                              ; preds = %105
  %109 = load i32*, i32** %9, align 8
  %110 = load i32, i32* %109, align 4
  switch i32 %110, label %121 [
    i32 128, label %111
  ]

111:                                              ; preds = %108
  %112 = load i8*, i8** %11, align 8
  %113 = ptrtoint i8* %112 to i32
  %114 = call i32 @m_pktlen(i32 %113)
  %115 = call i32 @TBR_SCALE(i32 %114)
  %116 = sext i32 %115 to i64
  %117 = load %struct.tb_regulator*, %struct.tb_regulator** %10, align 8
  %118 = getelementptr inbounds %struct.tb_regulator, %struct.tb_regulator* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = sub nsw i64 %119, %116
  store i64 %120, i64* %118, align 8
  br label %123

121:                                              ; preds = %108
  %122 = call i32 @VERIFY(i32 0)
  br label %123

123:                                              ; preds = %121, %111
  br label %124

124:                                              ; preds = %123, %105
  %125 = load i8*, i8** %11, align 8
  store i8* %125, i8** %5, align 8
  br label %126

126:                                              ; preds = %124, %90
  %127 = load i8*, i8** %5, align 8
  ret i8* %127
}

declare dso_local i32 @IFCQ_LOCK_ASSERT_HELD(%struct.ifclassq*) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i64 @MBUF_VALID_SC(i32) #1

declare dso_local i32 @IFCQ_TBR_IS_ENABLED(%struct.ifclassq*) #1

declare dso_local i8* @read_machclk(...) #1

declare dso_local i32 @IFCQ_DEQUEUE_SC(%struct.ifclassq*, i32, i8*, i32*) #1

declare dso_local i32 @IFCQ_DEQUEUE(%struct.ifclassq*, i8*, i32*) #1

declare dso_local i32 @TBR_SCALE(i32) #1

declare dso_local i32 @m_pktlen(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
