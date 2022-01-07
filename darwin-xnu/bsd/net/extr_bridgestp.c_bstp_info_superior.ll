; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_bridgestp.c_bstp_info_superior.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_bridgestp.c_bstp_info_superior.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bstp_pri_vector = type { i32, i32 }

@INFO_BETTER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bstp_pri_vector*, %struct.bstp_pri_vector*)* @bstp_info_superior to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bstp_info_superior(%struct.bstp_pri_vector* %0, %struct.bstp_pri_vector* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bstp_pri_vector*, align 8
  %5 = alloca %struct.bstp_pri_vector*, align 8
  store %struct.bstp_pri_vector* %0, %struct.bstp_pri_vector** %4, align 8
  store %struct.bstp_pri_vector* %1, %struct.bstp_pri_vector** %5, align 8
  %6 = load %struct.bstp_pri_vector*, %struct.bstp_pri_vector** %4, align 8
  %7 = load %struct.bstp_pri_vector*, %struct.bstp_pri_vector** %5, align 8
  %8 = call i64 @bstp_info_cmp(%struct.bstp_pri_vector* %6, %struct.bstp_pri_vector* %7)
  %9 = load i64, i64* @INFO_BETTER, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %30, label %11

11:                                               ; preds = %2
  %12 = load %struct.bstp_pri_vector*, %struct.bstp_pri_vector** %4, align 8
  %13 = getelementptr inbounds %struct.bstp_pri_vector, %struct.bstp_pri_vector* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.bstp_pri_vector*, %struct.bstp_pri_vector** %5, align 8
  %16 = getelementptr inbounds %struct.bstp_pri_vector, %struct.bstp_pri_vector* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @bstp_same_bridgeid(i32 %14, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %11
  %21 = load %struct.bstp_pri_vector*, %struct.bstp_pri_vector** %5, align 8
  %22 = getelementptr inbounds %struct.bstp_pri_vector, %struct.bstp_pri_vector* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, 4095
  %25 = load %struct.bstp_pri_vector*, %struct.bstp_pri_vector** %4, align 8
  %26 = getelementptr inbounds %struct.bstp_pri_vector, %struct.bstp_pri_vector* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, 4095
  %29 = icmp eq i32 %24, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %20, %2
  store i32 1, i32* %3, align 4
  br label %32

31:                                               ; preds = %20, %11
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %31, %30
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i64 @bstp_info_cmp(%struct.bstp_pri_vector*, %struct.bstp_pri_vector*) #1

declare dso_local i64 @bstp_same_bridgeid(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
